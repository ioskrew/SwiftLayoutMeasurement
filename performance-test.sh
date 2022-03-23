#!/bin/bash

totalResults=()

for i in {1..10}
do
    IFS_backup=$IFS
    IFS=$'!'
    results=($(
        xcodebuild test -scheme SwiftLayoutMeasurement -sdk iphonesimulator15.2 -destination 'name=iPhone 13 Pro' '-only-testing:SwiftLayoutMeasurementTests/PerformanceTests' 2>/dev/null |
            grep 'CPU Time' |
            grep -oE '(testPerformance1NativeApi|testPerformance1InterfaceBuilder|testPerformance1SnapKit|testPerformance1Layoutable)\].+values: \[([0-9|\.|,| ]+)\]' |
            sed -E "s/^.*testPerformance1(.+)]'.+values: \[(.+)\]$/\1:\2!/" |
            sed -e "s/ //g"
    ))
    IFS=$IFS_backup

    for result in ${results[@]}; do
        IFS=$':'
        keyValue=($result)
        IFS=$IFS_backup

        name=${keyValue[0]}
        values=$(echo ${keyValue[1]} | sed -e "s/,/ /g")

        testCount=0;
        total=0; 

        for value in ${values[@]}; do 
            total=$(echo $total+$value | bc )
            ((testCount++))
        done
        avg="0$(echo "scale=6; $total / $testCount" | bc)"

        totalResults+=("$name:$avg")
    done
done

InterfaceBuilder=($(printf -- '%s\n' "${totalResults[@]}" | grep "InterfaceBuilder" | sed -e "s/InterfaceBuilder://g"))
Layoutable=($(printf -- '%s\n' "${totalResults[@]}" | grep "Layoutable" | sed -e "s/Layoutable://g"))
NativeApi=($(printf -- '%s\n' "${totalResults[@]}" | grep "NativeApi" | sed -e "s/NativeApi://g"))
SnapKit=($(printf -- '%s\n' "${totalResults[@]}" | grep "SnapKit" | sed -e "s/SnapKit://g"))

echo "InterfaceBuilder - ${InterfaceBuilder[@]}"
echo "Layoutable - ${Layoutable[@]}"
echo "NativeApi - ${NativeApi[@]}"
echo "SnapKit - ${SnapKit[@]}"

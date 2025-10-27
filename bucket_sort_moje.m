%funkcja wyświetlająca
function displayData(arr, counter)
    sorted_array = arr;
    disp('Sorted Array:');
    disp(sorted_array);
    disp('Action count:');
    disp(counter);
end

function bucketSortVoid(arr)
    WMAX = max(arr);
    WMIN = min(arr);
    lw = zeros(1, WMAX - WMIN + 1);
    N = length(arr);

    for i = 1:N
        lw(arr(i) - WMIN + 1) = lw(arr(i) - WMIN + 1) + 1;
    end

    counter = 0;
    j = 1;
    for i = WMIN:WMAX
        while lw(i - WMIN + 1) > 0
            counter= counter +1;
            arr(j) = i;
            j = j + 1;
            lw(i - WMIN + 1) = lw(i - WMIN + 1) - 1;
        end
    end

    displayData(arr, counter);
end

function [arr, counter] = bucketSortArr(arr)
    WMAX = max(arr);
    WMIN = min(arr);
    lw = zeros(1, WMAX - WMIN + 1);
    N = length(arr);

    for i = 1:N
        lw(arr(i) - WMIN + 1) = lw(arr(i) - WMIN + 1) + 1;
    end

    counter = 0;
    j = 1;
    for i = WMIN:WMAX
        while lw(i - WMIN + 1) > 0
            counter= counter +1;
            arr(j) = i;
            j = j + 1;
            lw(i - WMIN + 1) = lw(i - WMIN + 1) - 1;
        end
    end
end


%array = rand(10,1);

array = [4,51,53,21,5,6,546];

bucketSortVoid(array);

[sorted_array, counter] = bucketSortArr(array);
displayData(sorted_array, counter)

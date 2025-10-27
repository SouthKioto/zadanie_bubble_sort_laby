%Funkcje
%funkcja wyświetlająca
function displayData(arr, counter)
    sorted_array = arr;
    disp('Sorted Array:');
    disp(sorted_array);
    disp('Action count:');
    disp(counter);
end

%wersja void
function bubbleSortVoid(arr)
    array_size = length(arr);
    
    counter = 0;
    for i = 1:array_size-1
        for j = 1:array_size-1
            if arr(j) > arr(j+1)
                tmp = arr(j);
                arr(j) = arr(j+1);
                arr(j+1) = tmp;
    
                counter = counter +1;
            end
        end
    end

    displayData(arr, counter);
end

%wersja zwracająca
function [s_array, counter] = bubbleSortInt(arr)
    array_size = length(arr);
    
    counter = 0;
    for i = 1:array_size-1
        for j = 1:array_size-1
            if arr(j) > arr(j+1)
                tmp = arr(j);
                arr(j) = arr(j+1);
                arr(j+1) = tmp;
    
                counter = counter +1;
            end
        end
    end

    s_array = arr;
end

%wyniki
%array = [4,51,53,21,5,6,546]; %zwykła tablica
array = rand(10,1); %tablica generowana pseudolosowo (wartości 0-1)

%wyświetlenie nie posortowanej tablicy
disp('Non sorted array');
disp(array);

%wesja nie zwracająca wartości
disp('Void function version')
bubbleSortVoid(array);

%wersja zwracająca wartość
disp('Returning value function version')

[arr_srt, counter] = bubbleSortInt(array);
displayData(arr_srt, counter);
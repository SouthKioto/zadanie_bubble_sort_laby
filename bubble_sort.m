arr = randi([-10 10], 1, 30);
%arr = [4,5,2,6,3,7,8,1];
arr_length = length(arr);
top = arr_length - 1;
bottom = 1; 
replace = true;

counter = 0;

while replace
    changed_element = false;
    replace = false;
   
    for j = 1:top
        if arr(j) > arr(j+1)
            tmp = arr(j);
            arr(j) = arr(j+1);
            arr(j+1) = tmp;
            counter = counter + 1;
            replace = true;
            changed_element = true;
        end
    end

    for j = top:-1:bottom
        if arr(j) > arr(j+1)
            tmp = arr(j);
            arr(j) = arr(j+1);
            arr(j+1) = tmp;
            counter = counter + 1;
            replace = true;
            changed_element = true;
        end
    end

    if ~changed_element
        break;
    end
end

disp("Posortowana tablica")
disp(arr)
disp("Liczba przejść")
disp(counter)
disp("Srednia przejść")
disp(floor((counter/30)*100))
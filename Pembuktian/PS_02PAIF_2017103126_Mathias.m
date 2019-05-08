clear
clc

A = 1:5;
B = [5, 4, 3, 2, 1];
C = 1:3;
disp('A = {1, 2, 3, 4, 5}')
disp('B = {5, 4, 3, 2, 5}')
disp('C = {1, 2, 3}')

disp(' ')
disp('1. PEMBUKTIAN A = B')
if ismember(A,B)
    disp('A subset B')
    if ismember(B,A)
        disp('B subset A')
        if length(B) <= length(A)
            disp('Kardinalitas A dan B sama')
            disp('Karena definisi di atas terpenuhi, jadi A = B')
        else
            disp('kardinalitas B tidak sama dengan kardinalitas A')
        end
    else
        disp('B bukan subset A')
    end
else 
    disp('Karena A bukan subset dari B, B bukan subset dari A, jadi A tidak sama dengan b')
end


disp(' ')
disp('2. PEMBUKTIAN A = C')
if ismember(A,C)
    disp('A subset C')
    if ismember(C,A)
        disp('C subset A')
        if length(C) <= length(A)
            disp('Kardinalitas A dan C sama')
            disp('Jadi A sama dengan C')
        else
            disp('Kardinalitas C tidak sama dengan kardinalitas A')
        end
    else
        disp('C bukan subset A')
        disp('Jadi A tidak sama dengan C')
    end
else 
    disp('A bukan subset C')
    disp('Jadi A tidak sama dengan C')
end

disp(' ')
disp('3. PEMBUKTIAN C SUBSET A')
if ismember(C,A)
    if length(A) <= length(C)
        disp('Kardinalitas C dan A sama')
        disp('Jadi C subset A')
    else
        disp('Kardinalitas C dan A tidak sama')
        disp('Jadi C bukan subset A')
    end
else 
    disp('Jadi C bukan subset A')
end



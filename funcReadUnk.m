function unk = funcReadUnk(filepath)

fid = fopen(filepath);

if fid == -1
    error('ERROR(funcReadUnk): file not found.');
end

[unk, COUNT] = fscanf(fid,'%f',[6, inf]);
unk=unk';

fclose(fid);
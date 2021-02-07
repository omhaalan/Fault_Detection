% Specify the folder where the files live.
myFolder = 'data/X8_longitudinal';
searchPattern = '*.db';
% Check to make sure that folder actually exists.  Warn user if it doesn't.
if ~isdir(myFolder)
    errorMessage = sprintf('Error: The following folder does not exist:\n%s', myFolder);
    uiwait(warndlg(errorMessage));
    return;
end
% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, searchPattern); % Change to whatever pattern you need.
theFiles = dir(filePattern);

for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = fullfile(myFolder, baseFileName);
    
    try
        longitudinal_coefficients(fullFileName, true);
    catch e
        warning ("some error occured, in file " +baseFileName + "... will proceed with next file. Message:  " + e.message);
    end
end
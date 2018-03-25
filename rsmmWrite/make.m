% This make.m is for MATLAB and OCTAVE under Windows, Mac, and Unix
function make()
try

	% Add -largeArrayDims on 64-bit machines of MATLAB
%     mex CFLAGS="\$CFLAGS -std=c99" -largeArrayDims libsvmread.c
%     mex CFLAGS="\$CFLAGS -std=c99" -largeArrayDims libsvmwrite.c 
    mex CFLAGS="\$CFLAGS -std=c99" -largeArrayDims rsmmWrite.c 
%     mex CFLAGS="\$CFLAGS -std=c99" -largeArrayDims libsvmwrite_emp_ubicomp08_t.c
%     mex CFLAGS="\$CFLAGS -std=c99" -largeArrayDims libsvmwrite_misr1.c
%     mex CFLAGS="\$CFLAGS -std=c99" -I.. -largeArrayDims svmtrain.c ../svm.cpp svm_model_matlab.c
%     mex CFLAGS="\$CFLAGS -std=c99" -I.. -largeArrayDims svmpredict.c ../svm.cpp svm_model_matlab.c
catch err
	fprintf('Error: %s failed (line %d)\n', err.stack(1).file, err.stack(1).line);
	disp(err.message);
	fprintf('=> Please check README for detailed instructions.\n');
end

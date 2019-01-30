REM go to the folder of the current script
pushd %~p0
cp NamespaceDoc.cs Assets/Emgu.CV/Assets/Scripts
doxygen Emgu.CV.Doxyfile
cd latex
call make
cd ..
cp latex/refman.pdf ../Emgu.CV.Unity/Assets/Emgu.CV/Documentation/Emgu.CV.Documentation.pdf
rm Assets/Emgu.CV/Assets/Scripts/NamespaceDoc.cs
popd
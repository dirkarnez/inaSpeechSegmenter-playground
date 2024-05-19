@echo off
set PYTHON_DIR=%USERPROFILE%\Downloads\python-3.10.8-amd64-portable
set PATH=^
%PYTHON_DIR%;^
%PYTHON_DIR%\Scripts;^
%USERPROFILE%\Downloads\ffmpeg-6.0-full_build-shared\ffmpeg-6.0-full_build-shared\bin;

@REM ina_speech_segmenter.py is in %PYTHON_DIR%\Scripts after pip install
ffmpeg -version &&^
python %PYTHON_DIR%\Scripts\ina_speech_segmenter.py --help &&^
python %PYTHON_DIR%\Scripts\ina_speech_segmenter.py -d sm -g false -o . -i "%1" &&^
pause

REM /E 参数用于复制所有子目录（即使是空的）
REM /I 参数如果目标不存在，会创建目录
REM /Y 参数用于覆盖已存在的文件而不需要提示
xcopy /E /I /Y C:\Code\FrontEnd\jl-tool\docs\type-doc C:\Code\FrontEnd\beixiyo.github.io\docs\type-doc

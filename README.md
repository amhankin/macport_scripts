# macport_scripts
Scripts to quickly install my commonly used programs.

## Latex: forward and reverse searching

When using macvim in combination with the Skim pdf viewer, ensure that the
following settings are correctly configured.

`ftplugin/tex.vim` must include:
```vim
let g:tex_flavor = 'latex'
let g:Tex_MultipleCompileFormat = 'pdf,bib,pdf'
let g:Tex_TreatMacViewerAsUNIX = 0
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 --interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf = 'Skim'
```

Settings for reverse searching in Skim:
* Preset: `Custom`
* Command: `/usr/local/bin/mvim`
* Arguments: `--remote-silent +":%line;foldo!" "%file"`

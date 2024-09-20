\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{customclass}[2024/09/12 Custom LaTeX class]

% Default options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

% Base class
\LoadClass[12pt]{book}

% Packages used
\RequirePackage{amsmath} % Allows for math equations
\RequirePackage{amssymb} % Allows for math symbols
\RequirePackage{tikz}    % Allows for drawing graphs
\RequirePackage{pgfplots} % Allows for plotting graphs
\RequirePackage{mdframed} % Allows for creating boxes around text
\RequirePackage[colorlinks]{hyperref} 

\RequirePackage{cancel} 
\RequirePackage{graphicx}
\RequirePackage{amsfonts}
\RequirePackage{booktabs}
\RequirePackage{siunitx}
\RequirePackage{fontawesome}
\RequirePackage[table]{xcolor}


% Allows for clickable table of contents
\RequirePackage[backend=biber]{biblatex} % Allows for bibliography
\addbibresource{calc.bib} % Adds the bibliography file
\RequirePackage[most]{tcolorbox} % Allows for creating call out boxes

% Definitions of tcolorboxes for different environments
\tcbuselibrary{skins,breakable} 

% Definition call out box 
\newtcolorbox{definition}[2][]{breakable,sharp corners, skin=enhancedmiddle jigsaw,parbox=false,
boxrule=0mm,leftrule=2mm,boxsep=0mm,arc=0mm,outer arc=0mm,attach title to upper,
after title={.\ }, coltitle=black,colback=gray!10,colframe=black, title={#2},
fonttitle=\bfseries,#1} 

% Example call out box 
\newtcolorbox{example}[2][]{breakable,sharp corners, skin=enhancedmiddle jigsaw,parbox=false,
boxrule=0mm,leftrule=2mm,boxsep=0mm,arc=0mm,outer arc=0mm,attach title to upper,
after title={.\ }, coltitle=blue,colback=blue!10,colframe=blue, title={#2},
fonttitle=\bfseries,#1}

% Important information call out box 
\newtcolorbox{important}[2][]{breakable,sharp corners, skin=enhancedmiddle jigsaw,parbox=false,
boxrule=0mm,leftrule=2mm,boxsep=0mm,arc=0mm,outer arc=0mm,attach title to upper,
after title={.\ }, coltitle=red,colback=red!10,colframe=red, title={#2},
fonttitle=\bfseries,#1}

% Formula call out box 
\newtcolorbox{formula}[2][]{breakable,sharp corners, skin=enhancedmiddle jigsaw,parbox=false,
boxrule=0mm,leftrule=2mm,boxsep=0mm,arc=0mm,outer arc=0mm,attach title to upper,
after title={.\ }, coltitle=purple,colback=purple!10,colframe=purple, title={#2},
fonttitle=\bfseries,#1}

% Proof call out box 
\newtcolorbox{proof}[2][]{breakable,sharp corners, skin=enhancedmiddle jigsaw,parbox=false,
boxrule=0mm,leftrule=2mm,boxsep=0mm,arc=0mm,outer arc=0mm,attach title to upper,
after title={.\ }, coltitle=green,colback=green!10,colframe=green, title={#2},
fonttitle=\bfseries,#1}

% Title, author, and date
\title{MATH1032-01: Lecture Notes}
\author{Joshua W. Kelly}
\date{\today}

% ======================================================================
%
% Notes: 
%
% You can use \label{sec:1} to refer to sections in your document, and then us \ref{sec:1} to refer to the section number.
%
% \begin{definition} and \end{definition} (grey) can be used to define a definition in your document. As well as \begin{example} and \end{example} (blue) for examples, \begin{important} and \end{important} (red) for important notes, \begin{formula} and \end{formula} (maroon) for formulas, and \begin{proof} and \end{proof} (green) for proofs.
% 
% \usepackage[colorlinks]{hyperref} allows you to click on the table of contents and it will take you to the section in the document.
%
% \[ \] is used to create standalone a math equation in the document. and \begin{align*} and \end{align*} is used to create a math equation with multiple lines. \( \) is used to create a math equation in the text.
% 
% ======================================================================

% ======================================================================
%
% Notes: 
%
% You can use \label{sec:1} to refer to sections in your document, and then us \ref{sec:1} to refer to the section number.
%
% \begin{definition} and \end{definition} (grey) can be used to define a definition in your document. As well as \begin{example} and \end{example} (blue) for examples, \begin{important} and \end{important} (red) for important notes, \begin{formula} and \end{formula} (maroon) for formulas, and \begin{proof} and \end{proof} (green) for proofs.
% 
% \usepackage[colorlinks]{hyperref} allows you to click on the table of contents and it will take you to the section in the document.
%
% \[ \] is used to create standalone a math equation in the document. and \begin{align*} and \end{align*} is used to create a math equation with multiple lines. \( \) is used to create a math equation in the text.
%
% You can use the code below to create a table in your document.
% 
% \rowcolors{3}{gray!10}{white!50}
% \begin{tabular}{*5l} \toprule
% Header 1 & Header 2 \\ \midrule
% Middle Row &Middle Row \\
% Middle Row & Middle Row \\
% Last Row 1 & Last Row 2 \\ \bottomrule
% \end{tabular}
% 
% ======================================================================
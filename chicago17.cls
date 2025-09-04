%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Chicago 17 configuration for Academic Papers.
% 
% This file is dedicated to the public domain under CC0.
% Use, modify, and distribute freely without restrictions or attribution.
% Created by M.M. Bostwick
%
% Last updated: 2024-08-07
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%% Loaded First: Class Declarations, etc %%%%%%%%%%%%%%%

%%%%% Class Declaration
\NeedsTeXFormat{LaTeX2e}                                    % Require LaTeX2e format
\ProvidesClass{chicago17}[2025/06/15 v1.0.0 Chicago 17th Edition Notes & Bibliography class]
\renewcommand{\normalsize}{\fontsize{12}{12}\selectfont}    % Default font size 12
\LoadClass[letterpaper,oneside,12pt]{report}                % Load report class. 

%%%%% For Processing and Errors
\batchmode                  % Enables TeXworks to continue LaTeX compiling on error.

%%%%%%%%%%%%%%% Package Loading %%%%%%%%%%%%%%%

%%%%% Page Layout & Spacing
\usepackage[margin=1in]{geometry} % Sets 1-inch margins all around
\usepackage{fancyhdr}       % Enables header modifications.
\usepackage{setspace}       % Enables double-spaced
\usepackage{titlesec}       % Enables section header modifications.
\usepackage{ragged2e}       % Enables noragged right (justifying)
\usepackage{tocloft}        % Enables Table of Contents customization 
\usepackage{indentfirst}    % Indents first paragraph line after section headers.

%%%%% Font Encoding & Typographic Settings
\usepackage[T1]{fontenc}    % T1 font encoding for better handling languages
\usepackage{cfr-lm}         % Old Style Numbers: fun look but sometimes creates latex errors with language settings.

%%%%% Great serif font choices for academic writing, pick one:
%\usepackage{lmodern}       % Latin Modern Roman: Like Century (standard but beautiful)
%\usepackage{mlmodern}      % Blacker version of lmodern
%\usepackage{OldStandard}   % Old Standard TT: classical serif font, inspired by 19th century typefaces
%\usepackage{TheanoDidot}   % Theano Didot: elegant Didone serif font inspired by classic Didot typefaces
%\usepackage{TheanoModern}  % Theano Modern: modern serif font with classical influences
%\usepackage{mathptmx}      % mathptmx: Like Adobe Times Roman
%\usepackage{ebgaramond}    % EB Garamond
%\usepackage{CormorantGaramond}  % Cormont Garmond
%\usepackage{newcent}       % New Century Schoolbook
%\usepackage{tgpagella}     % Classy TEX Gyre Pagella: Like Palatino
%\usepackage{libertine}     % Linux Libertine: Like Cambria
%\usepackage[charter]{mathdesign} % Charter: like Georgia
%\usepackage{fourier}       % Uses Utopia with math support
%\usepackage{pxfonts}       % Palatino clone, similar to mathpazo but with more math coverage
%\usepackage{XCharter}      % Charter-based serif with enhanced features
%\usepackage{PlayfairDisplay} % Use option 'black' to use the black
%\usepackage{gfsdidot}       % GFS Didot: elegant Didone style font, Greek and Latin support
%\usepackage{merriweather} %% Option 'black' gives heavier bold face 

% Massimo Vignelli's Five Fonts:
%\usepackage[default]{gfsbodoni}
%\usepackage[scaled]{helvet}
%\usepackage{mathptmx}      % mathptmx: Like Adobe Times Roman
%\usepackage{lmodern}       % Latin Modern Roman: Like Century (standard but beautiful)
% Missing Futura

%%%%% Language Configuration:  Comment out if not necessary
\usepackage[greek,english]{babel}   % Enables Greek text support.
\usepackage{cjhebrew}               % Enables Hebrew support.

%%%%% Typsetting Flexibility: Uncomment to fix typesetting issues
%\sloppy                     % Allows LaTeX more freedom to stretch lines
%\usepackage[none]{hyphenat} % Prohibits LaTeX from hyphenating words

%%%%% Chicago Footnote & Quoting Congiruation: needed for \autocite and \enquote
\usepackage[notes,backend=biber,autolang=other,language=english]{biblatex-chicago}
\bibliography{sources.bib}  % Loads sources.bib file for biblatex-chicago
\usepackage{csquotes}       % Enables \enquote{} and smart quote localization
%\usepackage[hang,flushmargin]{footmisc} % Optional, for footnote formatting, less indent.
\usepackage[hang,flushmargin]{footmisc} % hanging indent and removes the extra indent to the first line of footnotes so the number and text align at the left margin.
\setlength{\footnotemargin}{0.5em} % Set to 0.5 for the margin in the footnote.  You can change to 1 to make it larger.

%%%%% For fixing unbounded URLs: Comment out if not necessary
\usepackage{xurl}          % break long URLs across lines in footnotes and bibliography
\usepackage[breaklinks=true, hidelinks]{hyperref} % links span line breaks, hide hyperlinks

%%%%% For Graphics:  Enable, if necessary.
%\usepackage{graphicx}       % Enables image support

%%%%%%%%%%%%%%% Document Configuration & Redefinitions %%%%%%%%%%%%%%%

%%%%%  Chicago-style Header & Footer: Setup before \begin{document}
\setlength{\headheight}{14.5pt}
\pagestyle{fancy}
\fancyhf{}                  % clear header/footer
\fancyhead[R]{\thepage}     % Chicago page number: top right
\renewcommand{\headrulewidth}{0pt} % no header line

%%%%% For fixing long URLs:  Enable, if necesary
%\def\UrlBreaks{\do\/\do-\do.\do_\do~\do:}

%%%%% Chicago Title, Subtitle, etc. Configuration: Uses titlesec package
% Level 1: Centered, Bold or Italic, Headline-style Caps (no number)
\titleformat{\section}[block]
  {\normalfont\bfseries\centering}{}{0pt}{}\titlespacing*{\section}{0pt}{12pt}{12pt}

% Level 2: Centered, Regular, Headline-style Caps (no number)
\titleformat{\subsection}[block]
  {\normalfont\centering}{}{0pt}{}\titlespacing*{\subsection}{0pt}{12pt}{12pt}

% Level 3: Flush left, Bold or Italic, Headline-style Caps (no number)
\titleformat{\subsubsection}[block]
  {\normalfont\bfseries}{}{0pt}{}\titlespacing*{\subsubsection}{0pt}{10pt}{5pt}

% Level 4: Flush left, Roman (normal) type, sentence-style caps (no number)
\titleformat{\paragraph}[runin]
  {\normalfont\itshape}{}{0pt}{}\titlespacing*{\paragraph}{0pt}{3pt}{0pt}

% Level 5: Run-in heading at beginning of paragraph, bold or italic, sentence-style caps (no number)
\titleformat{\subparagraph}[runin]
  {\normalfont\bfseries}{}{0pt}{}\titlespacing*{\subparagraph}{0pt}{3pt}{0pt}

% Set paragraph indent to 0.5 inches for Chicago.
\setlength{\parindent}{0.5in}  % or 1.27cm

%%%%% Print a Title Page
\newcommand{\printtitlepage}{%
  \thispagestyle{empty}
  \begin{center}
  \vspace*{0.15\textheight}  % One-third down the page

  \begin{spacing}{2}  % Double spacing

  \Title\\
  \Subtitle

  \vspace{255pt}  % Approx. 1 inch (several lines later)
  \Author\\
  \Course\\
  \Date

  \end{spacing}
  \end{center}
  \pagebreak
}

%%%%% Table of Contents
\newcommand{\papercontents}{
    \clearpage
    \pagestyle{fancy}
    \fancyhf{}
    \fancyhead[R]{\thepage}
    \renewcommand{\headrulewidth}{0pt}
    
    % Manually typeset the ToC title using your Level 1 style
    \section*{TABLE OF CONTENTS}
    \addcontentsline{toc}{section}{TABLE OF CONTENTS}
    
    % Now print the ToC WITHOUT the default title
    \begingroup
      \let\clearpage\relax  % Prevent page breaks inside ToC
      \let\chapter*\relax   % In case it's a report/book class
      \renewcommand{\contentsname}{} % Remove default title if any
      \tableofcontents
    \endgroup
    \pagenumbering{roman}   % Sets page numbering for Roman Numerals
    
    \clearpage

    \vfill
    \pagebreak
}

%%%%% Main content, formated for Chicago
\newcommand{\content}{
    \doublespacing          % Enables doublespacing for Chicago.
    \parindent=1.5em
    \pagenumbering{arabic}  % This starts numbering pages 1, 2, 3...
    \setcounter{page}{1}    % Optional: ensures main text starts on page 1
    \pagestyle{fancy}       % Enables the custom header/footer.
    \fancyhf{}
    \fancyhead[R]{\thepage} % Places page numbers in the top-right.
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\thesection}{\arabic{section}} % Set as 1.0 for first \section{}
}

%%%%% Chicago Style Block Quote
% \vspace{0} added to to spacing issues.
\newcommand{\chicagoblock}[1]{%
    \begin{spacing}{1}\begin{displayquote} #1 \end{displayquote}\end{spacing}\vspace{0\baselineskip}}

%%%%% Biblography
\defbibheading{bibliography}[References]{%
  \section*{#1} \markboth{#1}{#1}}

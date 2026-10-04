%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Medium Length Professional CV - RESUME CLASS FILE
%
% This template has been downloaded from:
% http://www.LaTeXTemplates.com
%
% This class file defines the structure and design of the template.
%
% Original header:
% Copyright (C) 2010 by Trey Hunner
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved. This file is offered as-is,
% without any warranty.
%
% Created by Trey Hunner and modified by www.LaTeXTemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{resume}[2010/07/10 v0.9 Resume class]

\LoadClass[11pt,a4paper]{article} % Font size and paper type

\usepackage{anyfontsize}

\renewcommand{\normalsize}{\fontsize{10}{12.25}\selectfont}
\normalsize

\usepackage{enumitem}
% itemize sits inside rSection's list, so preamble \leftmargini has no effect.
% Only adjust horizontal indent; leave vertical spacing untouched.
\setlist[itemize]{leftmargin=1.75em, labelsep=0.35em}

\newcommand{\sectionfontsize}{\fontsize{11}{13}\selectfont}
\newcommand{\entrytitlefontsize}{\fontsize{10}{12}\selectfont}
\newcommand{\entrytitle}[1]{{\entrytitlefontsize\textbf{#1}}}
\newcommand{\entrylink}[2]{{\entrytitlefontsize\textbf{\href{#1}{#2}}}}
\newcommand{\experienceentry}[4]{%
  {\entrytitlefontsize\textbf{#1}, #2}\hfill\textit{(#3)} #4\vspace{-4pt}%
}
\newcommand{\projectentry}[4]{%
  \entrylink{#1}{#2}\hfill #3\\
  #4\vspace{-2pt}%
}
\newlength{\skillgroupskip}
\setlength{\skillgroupskip}{0.3em}
\newcommand{\skillgroup}[2]{\entrytitle{#1} #2\\[\skillgroupskip]}
\newcommand{\skillgrouplast}[2]{\entrytitle{#1} #2}

\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements

\usepackage{xcolor}
\definecolor{resumeblue}{HTML}{0077b6}

\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=resumeblue,
    filecolor=resumeblue,
    urlcolor=resumeblue,
}

\pagestyle{empty} % Suppress page numbers

%----------------------------------------------------------------------------------------
%	HEADINGS COMMANDS: Commands for printing name and address
%----------------------------------------------------------------------------------------

\def \name#1{\def\@name{#1}} % Defines the \name command to set name
\def \@name {} % Sets \@name to empty by default

\def \addressSep {$\diamond$} % Set default address separator to a diamond

% One, two or three address lines can be specified
\let \@addressone \relax
\let \@addresstwo \relax
\let \@addressthree \relax

% \address command can be used to set the first, second, and third address (last 2 optional)
\def \address #1{
  \@ifundefined{@addresstwo}{
    \def \@addresstwo {#1}
  }{
  \@ifundefined{@addressthree}{
  \def \@addressthree {#1}
  }{
     \def \@addressone {#1}
  }}
}

% \printaddress is used to style an address line (given as input)
\def \printaddress #1{
  \begingroup
    \def \\ {\addressSep\ }
    \centerline{#1}
  \endgroup
  \par
  \addressskip
}

% \printname is used to print the name as a page header
\def \printname {
  \begingroup
    \hfil{\MakeUppercase{\namesize\bf \@name}}\hfil
    \nameskip\break
  \endgroup
}

%----------------------------------------------------------------------------------------
%	PRINT THE HEADING LINES
%----------------------------------------------------------------------------------------

\let\ori@document=\document
\renewcommand{\document}{
  \ori@document  % Begin document
  \printname % Print the name specified with \name
  \@ifundefined{@addressone}{}{ % Print the first address if specified
    \printaddress{\@addressone}}
  \@ifundefined{@addresstwo}{}{ % Print the second address if specified
    \printaddress{\@addresstwo}}
     \@ifundefined{@addressthree}{}{ % Print the third address if specified
    \printaddress{\@addressthree}}
}

%----------------------------------------------------------------------------------------
%	SECTION FORMATTING
%----------------------------------------------------------------------------------------

% Defines the rSection environment for the large sections within the CV
\newenvironment{rSection}[1]{ % 1 input argument - section name
  \sectionskip
  {\sectionfontsize\bf\MakeUppercase{#1}} % Section title
  \sectionlineskip
  \hrule % Horizontal line
  \begin{list}{}{ % List for each individual item in the section
    \setlength{\leftmargin}{0em} % Margin within the section
  }
  \item[]
}{
  \end{list}
}

% Tighter section header for short bottom sections (e.g. Education)
\newenvironment{rCompactSection}[1]{%
  \vspace{0.35em}%
  {\sectionfontsize\bf\MakeUppercase{#1}}%
  \vspace{0.15em}%
  \hrule
  \begin{list}{}{%
    \setlength{\leftmargin}{0em}%
  }%
  \item[]%
}{%
  \end{list}%
}

%----------------------------------------------------------------------------------------
%	WORK EXPERIENCE FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{rSubsection}[4]{ % 4 input arguments - company name, year(s) employed, job title and location
 {\bf #1} \hfill {#2} % Bold company name and date on the right
 \ifthenelse{\equal{#3}{}}{}{ % If the third argument is not specified, don't print the job title and location line
  \\
  {\em #3} \hfill {\em #4} % Italic job title and location
  }\smallskip
  \begin{list}{$\cdot$}{\leftmargin=0em} % \cdot used for bullets, no indentation
   \itemsep -0.5em \vspace{-0.5em} % Compress items in list together for aesthetics
  }{
  \end{list}
  \vspace{0.5em} % Some space after the list of bullet points
}

% The below commands define the whitespace after certain things in the document - they can be \smallskip, \medskip or \bigskip
\def\namesize{\LARGE} % Size of the name at the top of the document
\def\addressskip{\smallskip} % The space between the two address (or phone/email) lines
\def\sectionlineskip{\medskip} % The space above the horizontal line for each section
\def\nameskip{\medskip} % The space after your name at the top
\def\sectionskip{\medskip} % The space after the heading section
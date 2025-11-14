\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hcmut-report}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[13pt,a4paper]{article}

\RequirePackage{anyfontsize,amsmath,amssymb}
\RequirePackage{geometry,graphicx,indentfirst,setspace}
\RequirePackage{booktabs}
\RequirePackage[center]{caption}
\PassOptionsToPackage{colorlinks=true, linkcolor=blue, citecolor=blue, urlcolor=blue}{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage[super,square,sort]{natbib}
\RequirePackage[english]{babel}

\newcommand{\Month}{
  \ifcase \the\month
  \or January
  \or February
  \or March
  \or April
  \or Tháng 5
  \or June
  \or July
  \or August
  \or September
  \or October
  \or November
  \or December
  \fi
}

% Define the font size for the cover and header
\newcommand{\coverFontSize}{\huge}
\newcommand{\headerFontSize}{\large}

% University and school names for the header
\newcommand{\@upperuniname}{\headerFontSize ĐẠI HỌC QUỐC GIA TP. HỒ CHÍ MINH}
\newcommand{\@uniname}{\headerFontSize TRƯỜNG ĐẠI HỌC BÁCH KHOA}

\newcommand{\@coursename}{BÁO CÁO THÍ NGHIỆM HÓA ĐẠI CƯƠNG}
\newcommand{\coursename}[1]{\renewcommand{\@coursename}{#1}}

\newcommand{\@reporttype}{}
\newcommand{\reporttype}[1]{\renewcommand{\@reporttype}{#1}}

% \newcommand{\@title}{\large BÀI TOÁN BÌNH PHƯƠNG CỰC TIỂU}
% \newcommand{\title}[1]{\renewcommand{\@title}{#1}}

\newcommand{\@advisor}{GVHD: Huỳnh Thị Vu}
\newcommand{\advisor}[1]{\renewcommand{\@advisor}{#1}}

\newcommand{\@classname}{L08}
\newcommand{\classname}[1]{\renewcommand{\@classname}{#1}}

\newcommand{\@groupname}{Nhóm 10}
\newcommand{\groupname}[1]{\renewcommand{\@groupname}{#1}}

\newcommand{\@reportplace}{Thành phố Hồ Chí Minh}
\newcommand{\reportplace}[1]{\renewcommand{\@reportplace}{#1}}

\newcommand{\@reporttime}{18/05/2024}
\newcommand{\reporttime}[1]{\renewcommand{\@reporttime}{#1}}
\geometry{
  paper=a4paper,
  left=3cm,
  right=2cm,
  vmargin=2cm,
  includeheadfoot=true,
  headheight=35pt,
  twoside=false
}
\onehalfspacing
\raggedbottom
\renewcommand{\arraystretch}{1.2}

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

\AtBeginDocument{\counterwithin{equation}{section}}
\AtBeginDocument{\counterwithin{table}{section}}
\AtBeginDocument{\counterwithin{figure}{section}}

\AtBeginDocument{\renewcommand*\bibname{References}}

\hypersetup{
  colorlinks=true,
  linkcolor=black,
  citecolor=red,
  urlcolor=blue
}

\renewcommand{\headrulewidth}{0.3pt}
\renewcommand{\footrulewidth}{0pt}

\pagestyle{fancy}
\fancyhf{}

\makeatletter
\if@twoside
  \fancyhead[EL]{
    \bfseries
    \begin{tabular}{rl}
      \begin{picture}(25pt,15pt)
        \put(0,-8pt){\includegraphics[width=20pt]{graphics/hcmut.png}}
      \end{picture}
      \begin{tabular}{l}
        \ttfamily\@upperuniname \\
        \ttfamily\@uniname \\
      \end{tabular}
    \end{tabular}
  }
  \fancyhead[OR]{
    \bfseries
    \begin{tabular}{rl}
      \begin{tabular}{r}
        \ttfamily\@upperuniname \\
        \ttfamily\@uniname \\
      \end{tabular}
      \begin{picture}(25pt,15pt)
        \put(0,-8pt){\includegraphics[width=20pt]{graphics/hcmut.png}}
      \end{picture}
    \end{tabular}
  }
\else
  \fancyhead[R]{
    \bfseries
    \begin{tabular}{rl}
      \begin{tabular}{r}
        \ttfamily\@upperuniname \\
        \ttfamily\@uniname \\
      \end{tabular}
      \begin{picture}(25pt,15pt) 
        \put(0,-8pt){\includegraphics[width=20pt]{graphics/hcmut.png}}
      \end{picture}
    \end{tabular}
  }
\fi
\makeatother


\fancyfoot[C]{\thepage}

\newcommand{\coverpage}{
  \pagestyle{empty}

  \vspace*{-3\baselineskip}
  \begin{center}
    \MakeUppercase{\coverFontSize Đại học Quốc gia Thành phố Hồ Chí Minh}

    \MakeUppercase{\coverFontSize Trường Đại học Bách Khoa}
    
    {\coverFontSize Khoa Khoa học và Kỹ thuật máy tính}
    \vfill
    \LARGE\bfseries CÔNG NGHỆ PHẦN MỀM (CO3001) \\  BÁO CÁO BÀI TẬP LỚN - BÀI 2 \\
    \vfill
    \includegraphics[scale=0.45]{graphics/hcmut.png}
    \vfill

    \Large\bfseries ĐỀ TÀI: \\ HỆ THỐNG HỖ TRỢ TUTOR TẠI\\ TRƯỜNG ĐẠI HỌC BÁCH KHOA – ĐHQG TP.HCM
    \vfill
    \Large Lớp L01 - Nhóm CESE - HK251 \\
    \Large Giáo viên hướng dẫn: ThS. Lê Đình Thuận

    % \vfill
    % \begin{center}
    %     \begin{tabular}{|c|c|c|c|c|}
    %     \hline
    %     \textbf{STT} & \textbf{Họ và Tên} & \textbf{MSSV}  \\
    %     \hline
    %     1 & Hàng Nhựt Long     & 2211874 \\
    %     \hline
    %     2 & Trần Đăng Khoa      & 2311645  \\
    %     \hline
    %     3 & Huỳnh Trung Kiên    & 2311730 \\
    %     \hline
    %     4 & Dương Thuận Đông    & 2210762  \\
    %     \hline
    %     5 & Nguyễn Anh Kiệt     & 2211758  \\
    %     \hline
    %     \end{tabular}
    % \end{center}
    \vfill
    \MakeUppercase{\normalsize Thành phố Hồ Chí Minh, Tháng 11 - 2025}
  \end{center}

  % \cleardoublepage
  \newpage
  \pagestyle{fancy}
}


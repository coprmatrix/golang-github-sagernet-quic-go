s~%global\s+goipath\s+(.*)/(.*)~%global goihead \2\n%global goipath \1/%{goihead}~g;
s~(Version:)\s*([^0-9\.]*)([0-9\.]*)([^\s]*)\s*~\1  \3\n%define oldver \2\3\4~g;
s~%gocheck~~g;
s~Source:.*~%define scommit %{?commit}%{?!commit:v%{oldver}}\n%define stag %{?tag}%{?!tag:%scommit}\nSource: https://%{goipath}/archive/%{stag}/%{goihead}-%{stag}.tar.gz~g;

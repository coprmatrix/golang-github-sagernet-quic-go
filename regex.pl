s~%global\s+goipath\s+(.*)/(.*)~%global goihead \2\n%global goipath \1/%{goihead}~g;
s~(Version:)[^0-9\.]*(.*)~\1  \2~g;
s~%gocheck~~g;
s~Source:.*~%define stag %{?tag}%{?!tag:%commit}\nSource: https://%{goipath}/archive/%{stag}/%{goihead}-%{stag}.tar.gz~g;

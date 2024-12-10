Name: challenge
Version: v1.0	
Release: 1
Summary: This is package will display the dat/time and the hostname of the system installed on it.	
Group: Linux
License: Apache	
URL: https://apache.org		
##Source0:	
##BuildRequires: rpmbuild	
Requires: bash

%description
A script that will create/modify the file called challenge under /etc/ with the contents of date/time and hostname

%prep

%build
cat > script.sh <<EOF
#!/usr/bin/bash
cd /etc/
echo "$(date)" > challenge
echo "$(hostname -f)" >> challenge
EOF

%install
mkdir -p %{buildroot}/usr/bin/
install -m 755 script.sh %{buildroot}/usr/bin/script.sh

%files
/usr/bin/script.sh

%post
/usr/bin/script.sh

%changelog


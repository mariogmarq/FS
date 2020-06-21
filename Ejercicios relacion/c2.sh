#!/bin/bash
if [[ !( -d $1  ) ]]; then
    exit 1;
fi

echo "#!/bin/bash
if [[ -e \$1 ]]; then
    echo \"El fichero \$1 ya existe\";
    exit 1;
fi

for var in "\$@"; do
    if [[ \$var != \$1 ]]; then
        more \$var >> \$1;
    fi
done" > $1/installed.sh

LOGSTR=$(git log | head -3 | awk '{printf "%s\\\\n", $0}')

echo "#include <string>" > git_version.cpp
echo "std::string git_version() {" >> git_version.cpp
echo "  return \"$LOGSTR\";" >> git_version.cpp
echo "}" >> git_version.cpp
# This script checks whether the swiftlint.yml files
# matches the swiftlint.yml file in the latest version folder
#
# The script is intended to be run in this repo's root folder: "bash validation/validate.sh"

last_version=`exec ls versions | sed 's/\([0-9]\+\).*/\1/g' | sort -n | tail -1`;
if cmp --silent "swiftlint.yml" "versions/$last_version/swiftlint.yml"
then
  echo "Validation passed."
  exit 0;
else
  echo "Validation failed. Please make sure that the contents of the top-level swiftlint.yml file match the contents of the latest version's swiftlint.yml file.";
  exit 1;
fi

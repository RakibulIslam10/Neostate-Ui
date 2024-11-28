#!/bin/bash

case "$1" in
  "generate-keystore")
    curl -sSL https://raw.githubusercontent.com/rabbihossenjoy/gen/main/generate_keystore.sh | bash
    ;;
  "generate-multi-language")
    curl -sSL https://raw.githubusercontent.com/rabbihossenjoy/gen/main/multi_language.sh | bash
    ;;
  "remove-unused-constants")
    curl -sSL https://raw.githubusercontent.com/rabbihossenjoy/gen/main/remove_unused_constants.sh | bash
    ;;
  "generate-strings-class")
    curl -sSL https://raw.githubusercontent.com/rabbihossenjoy/gen/main/generate_strings_class.sh | bash
    ;;
  "generate-dart-method")
    read -p "Enter Model Class Name: " modelClassName
    read -p "Enter Loading Variable Name: " loadingVarName
    read -p "Enter HTTP Method (GET or POST): " method
    curl -sSL https://raw.githubusercontent.com/rabbihossenjoy/gen/main/gen_api_method.sh | bash -s "$modelClassName" "$loadingVarName" "$method"
    ;;
  "generate-views")
    read -p "Enter View Names (space-separated): " viewNames
    curl -sSL https://raw.githubusercontent.com/rabbihossenjoy/gen/main/generate_views.sh | bash -s "$viewNames"
    ;;
  *)
    echo "Usage: $0 {generate-keystore|generate-multi-language|remove-unused-constants|generate-strings-class|generate-dart-method|generate-views}"
    ;;
esac

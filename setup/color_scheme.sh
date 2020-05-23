#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#2E3436"           # HOST
export COLOR_02="#EB2E2E"           # SYNTAX_STRING
export COLOR_03="#10D975"           # COMMAND
export COLOR_04="#FAD031"           # COMMAND_COLOR2
export COLOR_05="#2F95C2"           # PATH
export COLOR_06="#8C1C9E"           # SYNTAX_VAR
export COLOR_07="#0BB2B4"           # PROMP
export COLOR_08="#EEEEEC"           #

export COLOR_09="#555753"           #
export COLOR_10="#FF5151"           # COMMAND_ERROR
export COLOR_11="#29E085"           # EXEC
export COLOR_12="#FDD84A"           #
export COLOR_13="#3CB7EE"           # FOLDER
export COLOR_14="#9861A1"           #
export COLOR_15="#61CECF"           #
export COLOR_16="#EEEEEC"           #

export BACKGROUND_COLOR="#2E3436"   # Background Color
export FOREGROUND_COLOR="#D3D7CF"   # Text
export CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor
export PROFILE_NAME="Frank"
# =============================================================== #


# =============================================================== #
# | Apply Colors
# ===============================================================|#
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
# IMPORTANT: Make sure you export this variable if your main shell is not bash
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Mayccoll/Gogh/master"}


if [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
else
  if [[ "$(uname)" = "Darwin" ]]; then
    # OSX ships with curl and ancient bash
    bash -c "$(curl -so- "${BASE_URL}/apply-colors.sh")"
  else
    # Linux ships with wget
    bash -c "$(wget -qO- "${BASE_URL}/apply-colors.sh")"
  fi
fi

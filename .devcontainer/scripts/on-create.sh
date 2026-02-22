#!/usr/bin/env bash
set -euo pipefail
set -x

log() { echo -e "\n== $* =="; }

log "System packages (TeX)"
log "Yarn APT repo key"
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo gpg --dearmor -o /etc/apt/keyrings/yarn.gpg
echo "deb [signed-by=/etc/apt/keyrings/yarn.gpg] https://dl.yarnpkg.com/debian stable main" | \
  sudo tee /etc/apt/sources.list.d/yarn.list > /dev/null

sudo apt-get update
sudo apt-get install -y --no-install-recommends \
  texlive-latex-recommended \
  texlive-latex-extra \
  texlive-xetex \
  texlive-fonts-recommended \
  texlive-fonts-extra \
  texlive-pictures \
  latexmk \
  biber \
  chktex \
  ca-certificates \
  curl \
  git
sudo apt-get clean
sudo rm -rf /var/lib/apt/lists/*

log "Python packages"
python -m pip install --upgrade pip
pip install --no-cache-dir \
  jupyter ipykernel numpy pandas matplotlib requests rich pytest black ruff Pygments

log "Install nvm + Node 20"
export NVM_DIR="$HOME/.nvm"
if [ ! -s "$NVM_DIR/nvm.sh" ]; then
  curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
fi

# shellcheck disable=SC1090
. "$NVM_DIR/nvm.sh"

nvm install 20
nvm use 20
npm -v

log "Persist nvm in shell startup files"
ensure_nvm_lines() {
  local file="$1"
  touch "$file"
  if ! grep -qs 'export NVM_DIR=' "$file"; then
    echo 'export NVM_DIR="$HOME/.nvm"' >> "$file"
  fi
  if ! grep -qs 'nvm.sh' "$file"; then
    echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >> "$file"
  fi
  if ! grep -qs 'nvm use 20' "$file"; then
    echo 'nvm use 20 >/dev/null 2>&1 || true' >> "$file"
  fi
}

ensure_nvm_lines "$HOME/.bashrc"
ensure_nvm_lines "$HOME/.profile"

log "Install Gemini CLI"
npm install -g @google/gemini-cli
gemini --version

log "Done"

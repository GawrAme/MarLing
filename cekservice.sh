#!/bin/bash
domain=$(cat /etc/data/domain)
token=$(cat /etc/data/token.json | jq -r .access_token)

# // Code for service
export RED='\033[0;31m';
export GREEN='\033[0;32m';
export YELLOW='\033[0;33m';
export BLUE='\033[0;34m';
export PURPLE='\033[0;35m';
export CYAN='\033[0;36m';
export LIGHT='\033[0;37m';
export NC='\033[0m';

# // Export Banner Status Information
export ERROR="[${RED} ERROR ${NC}]";
export INFO="[${YELLOW} INFO ${NC}]";
export OKEY="[${GREEN} OKEY ${NC}]";
export PENDING="[${YELLOW} PENDING ${NC}]";
export SEND="[${YELLOW} SEND ${NC}]";
export RECEIVE="[${YELLOW} RECEIVE ${NC}]";

# // VAR
if [[ $(netstat -ntlp | grep -i nginx | grep -i 0.0.0.0:8081 | awk '{print $4}' | cut -d: -f2 | xargs | sed -e 's/ /, /g') == '8081' ]]; then
    NGINX="${GREEN}Okay${NC}";
else
    NGINX="${RED}Not Okay${NC}";
fi
if [[ $(netstat -ntlp | grep -i python | grep -i "127.0.0.1:7879" | awk '{print $4}' | cut -d: -f2 | xargs | sed -e 's/ /, /g') == "7879" ]]; then
    MARZ="${GREEN}Okay${NC}";
else
    MARZ="${RED}Not Okay${NC}";
fi
if [[ $(systemctl status ufw | grep -w Active | awk '{print $2}' | sed 's/(//g' | sed 's/)//g' | sed 's/ //g') == 'active' ]]; then
    UFW="${GREEN}Okay${NC}";
else
    UFW="${RED}Not Okay${NC}";
fi

# Function to fetch system information from Marzban API
function get_marzban_info() {

    local marzban_api="https://${domain}/api/system"
    local marzban_info=$(curl -s -X 'GET' "$marzban_api" -H 'accept: application/json' -H "Authorization: Bearer $token")

    if [[ $? -eq 0 ]]; then
# Parsing Marzban API response
marzban_version=$(echo "$marzban_info" | jq -r '.version')
    else
        echo -e "${ERROR} Failed to fetch Marzban information."
        exit 1
    fi
}
# Usage of the function
get_marzban_info "your_domain_here" "your_token_here"

versimarzban=$(grep 'image: gozargah/marzban:' /opt/marzban/docker-compose.yml | awk -F: '{print $3}')
  # Replace values and specific version
  case "${versimarzban}" in
    "latest") versimarzban="Stable";;
    "dev") versimarzban="Beta";;
  esac
# Function to get Xray Core version
function get_xray_core_version() {
    xray_core_info=$(curl -s -X 'GET' \
        "https://${domain}/api/core" \
        -H 'accept: application/json' \
        -H "Authorization: Bearer ${token}"
    )
    xray_core_version=$(echo "$xray_core_info" | jq -r '.version')

    echo "$xray_core_version"
}
# Get Xray Core version
xray_core_version=$(get_xray_core_version "$domain" "$token")

echo ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m            ⇱ Service Information ⇲             \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "❇️ Marzban Version     : ${GREEN}${marzban_version}${NC} ${BLUE}${versimarzban}${NC}"
echo -e "❇️ Core Version        : ${GREEN}Xray ${xray_core_version}${NC}"
echo -e "❇️ Nginx               : $NGINX"
echo -e "❇️ Firewall            : $UFW"
echo -e "❇️ Marzban Panel       : $MARZ"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "SHARING PORT 443 MARZBAN VERSION AMAN SEMUA BOSSKUH"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo ""


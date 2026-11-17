if systemctl is-active --quite ssh; then
echo "ssh is active"
else
echo "it is not active"
fi

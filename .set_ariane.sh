if [ -z "$ARIANE_SET" ]; then
	echo "Setting Ariane environment..."
	cd /home/makksi/etronic/openpiton
	source ./piton/ariane_setup.sh	
	cd /home/makksi/etronic/openpiton/build
	export PS1="ARIANE-"$PS1
else
	echo "Running piton on Ariane..."
fi

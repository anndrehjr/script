#!/bin/bash

# Define log
LOG_FILE="/var/log/reiniciar_dialer.log"
echo "Reiniciando dialer às $(date)" >> $LOG_FILE

# Mata os processos antigos
pkill -f /opt/issabel/dialer/dialerd

# Aguarda alguns segundos
sleep 5

# Reinicia os processos
/opt/issabel/dialer/dialerd &

echo "Dialer reiniciado com sucesso às $(date)" >> $LOG_FILE

#!/bin/bash
set -e

echo "Starting PgCat..."

# Show config for debugging
echo "=== PgCat Configuration ==="
grep -E "host|port|servers|pool_size|default_role|load_balancing" /etc/pgcat/pgcat.toml | head -15

# Start PgCat
exec pgcat /etc/pgcat/pgcat.toml

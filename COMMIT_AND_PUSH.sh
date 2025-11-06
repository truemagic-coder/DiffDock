#!/bin/bash
set -e

echo "Committing DiffDock CA-only handling fix..."
git add -A
git commit -m "Fix: Set pdb=None when using provided sequence to skip prody operations"
git push origin gpu-esm-fix

echo "✅ Pushed to gpu-esm-fix branch"
echo ""
echo "Now rebuild with:"
echo "  cd /home/bevan/cometheart/runpod-workers/diffdock-worker"
echo "  ./deploy.sh --no-cache"

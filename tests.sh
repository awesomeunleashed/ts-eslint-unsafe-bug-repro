echo "Running 4.7 tsc..."
cd ts4.7
npm run tsc

echo "Running 4.7 tsc:skipLibCheck..."
npm run tsc -- --skipLibCheck

echo "Running 4.7 eslint..."
npm run lint

echo "Running 4.8 tsc..."
cd ../ts4.8
npm run tsc

echo "Running 4.8 tsc:skipLibCheck..."
npm run tsc -- --skipLibCheck

echo "Running 4.8 eslint..."
npm run lint

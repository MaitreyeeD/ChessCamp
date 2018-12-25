# Create new Rails API repo
echo -n "Creating a new Rails API repo called phase4_api_s18.........."
cd ..
rails new phase4_api_s18 --api >/dev/null
cd - >/dev/null
echo "finished"
echo ""

# Begin copying over all the files
echo "Copying all files to the new api repo:"

# Copy over Gemfile
echo -n "Copying the Gemfile and running bundle install.........."
cp Gemfile ../phase4_api_s18/Gemfile
cd ../phase4_api_s18
bundle update minitest >/dev/null
bundle install >/dev/null
cd - >/dev/null
echo "finished"

# Copy over db files
echo -n "Copying over the db files and migrate db.........."
rm -rf ../phase4_api_s18/db
cp -R db/ ../phase4_api_s18/db/
cd ../phase4_api_s18
rails db:migrate:reset >/dev/null
cd - >/dev/null
echo "finished"

# Copy over lib files
echo -n "Copying over the lib files and application.rb.........."
rm -rf ../phase4_api_s18/lib/
cp -R lib/ ../phase4_api_s18/lib/
cp config/application.rb ../phase4_api_s18/config/application.rb
echo "finished"

# Copy models over
echo -n "Copying over the model files.........."
rm -rf ../phase4_api_s18/app/models/
cp -rf app/models/ ../phase4_api_s18/app/models/
echo "finished"

# Copy helper files over
echo -n "Copying over helper files.........."
cp -R app/helpers/ ../phase4_api_s18/app/helpers/
echo "finished"

# Copy over model test files
echo -n "Copying over model test files.........."
cp -R test/sets ../phase4_api_s18/test/sets/
cp -R test/helpers ../phase4_api_s18/test/helpers/
cp test/contexts.rb ../phase4_api_s18/test/contexts.rb
cp test/factories.rb ../phase4_api_s18/test/factories.rb
cp test/minitest_extensions.rb ../phase4_api_s18/test/minitest_extensions.rb
cp test/application_system_test_case.rb ../phase4_api_s18/test/application_system_test_case.rb
cp test/test_helper.rb ../phase4_api_s18/test/test_helper.rb

rm -rf ../phase4_api_s18/test/models/
cp -R test/models ../phase4_api_s18/test/models/
echo "finished"
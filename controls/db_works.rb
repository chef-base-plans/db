title 'Tests to confirm db works as expected'

plan_origin = ENV['HAB_ORIGIN']
plan_name = input('plan_name', value: 'db')

control 'core-plans-db-works' do
  impact 1.0
  title 'Ensure db works as expected'
  desc '
  '
  plan_installation_directory = command("hab pkg path #{plan_origin}/#{plan_name}")
  describe plan_installation_directory do
    its('exit_status') { should eq 0 }
    its('stdout') { should_not be_empty }
  end
  
  plan_pkg_ident = ((plan_installation_directory.stdout.strip).match /(?<=pkgs\/)(.*)/)[1]
  plan_pkg_version = (plan_pkg_ident.match /^#{plan_origin}\/#{plan_name}\/(?<version>.*)\//)[:version]
  describe command("DEBUG=true; hab pkg exec #{plan_pkg_ident} db_dump -V") do
    its('exit_status') { should eq 0 }
    its('stdout') { should_not be_empty }
    its('stdout') { should match /Berkeley DB #{plan_pkg_version}/ }
    its('stderr') { should be_empty }
  end
end

control 'docker' do
  title 'docker is installed'
  describe command('docker --version') do
    its('stdout') { should match (/18\.09/) }
    its('stderr') { should eq '' }
    its('exit_status') { should eq 0 }
  end
end

control 'inspec' do
  title 'inspec is installed and ready to be used'
  describe command('inspec version') do
    its('stdout') { should match (/4\.18\.39/) }
    its('stderr') { should eq '' }
    its('exit_status') { should eq 0 }
  end
end

control 'hadolint' do
  title 'hadolint is installed'
  describe command('hadolint --version') do
    its('stdout') { should match (/v1\.17\.3/) }
    its('stderr') { should eq '' }
    its('exit_status') { should eq 0 }
  end
end

control 'trivy' do
  title 'trivy is installed'
  describe command('trivy --version') do
    its('stdout') { should match (/0\.2\.1/) }
    its('stderr') { should eq '' }
    its('exit_status') { should eq 0 }
  end
end

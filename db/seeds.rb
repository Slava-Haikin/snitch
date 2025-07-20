if Rails.env == 'development'
  test_user = User.find_or_create_by!(email: 'test@email.com') { |user| user.password = 'test' }
  test_site = Site.find_or_create_by!(url: 'https://google.com') { |site| site.user = test_user }

  test_site.uptime_records.destroy_all

  test_site.uptime_records.create!([
    { available: true, ping: 16 },
    { available: true, ping: 16 },
    { available: true, ping: 16 }
  ])
end

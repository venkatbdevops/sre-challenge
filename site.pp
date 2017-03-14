node 'default' {
  $adminemail = 'dummy@example.com'
  $servername = 'dummy.example.com'
        
  include apache
  include apache::vhosts
  include apache::port
  }
        
  

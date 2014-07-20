name              'osm-tasking-manager2'
maintainer        'Coleman McCormick'
maintainer_email  'coleman@colemanm.org'
license           'Apache 2.0'
description       'Configure and install OSM Tasking Manager.'
version           '0.0.1'

%w{ ubuntu debian }.each do |os|
  supports os
end

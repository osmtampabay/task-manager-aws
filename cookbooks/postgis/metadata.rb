name              "postgis"
maintainer        "Coleman McCormick"
maintainer_email  "cmccormick@gmail.com"
license           "maintainer"
description       "Installs PostgreSQL + PostGIS"
version           "0.1"

recipe "postgis", "Installs PostgreSQL + PostGIS"

%w{ ubuntu }.each do |os|
  supports os
end

# depends "postgres"
depends "geos"
depends "gdal"
depends "proj"

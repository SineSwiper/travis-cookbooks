# Debian tools should not expect interactive keyboard input
# (like y/n confirmations)
export DEBIAN_FRONTEND=noninteractive

export CI=true
export TRAVIS=true

# without this magic variable, nothing can possibly work. MK.
export HAS_JOSH_K_SEAL_OF_APPROVAL=true
# http://www.youtube.com/watch?v=QPPN_gkj_gk
export HAS_ANTARES_THREE_LITTLE_FRONZIES_BADGE=true

export RAILS_ENV=test
export MERB_ENV=test
export RACK_ENV=test

# --server for the server (C2) JVM JIT compiler
# -Xcext.enabled=false to disable C extensions, running them in production
#                      on JRuby is a bad idea but developers often have no
#                      clue they depend on C extensions
# -J-Xss2m bumps stack size to 2 MB
# -J-Xmx256m sets maximum allowed JVM heap size to 256 MB (64m by default)
# -J-XX:+TieredCompilation to enable tiered compilation mode (long story short:
#                          to improve startup time, especially on JDK 7+)
export JRUBY_OPTS="--server -Xcext.enabled=false -J-Xss2m -J-Xmx256m -J-XX:+TieredCompilation"
export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=192m"

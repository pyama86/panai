MRuby::Gem::Specification.new('panai') do |spec|
  spec.license = 'MIT'
  spec.author  = 'pyama86'
  spec.summary = 'panai'
  spec.bins    = ['panai']
  spec.linker.flags << '-static'
  spec.linker.libraries << %w(pcap pthread)
  spec.cc.flags << "-DMRB_THREAD_COPY_VALUES"

  spec.add_dependency 'mruby-network-analyzer', github: "pyama86/mruby-network-analyzer"
  spec.add_dependency 'mruby-json'
  spec.add_dependency 'mruby-print', :core => 'mruby-print'
  spec.add_dependency 'mruby-mtest', :mgem => 'mruby-mtest'
end

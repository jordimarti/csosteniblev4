# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'noticia', 'noticies'
  inflect.irregular 'cas', 'casos'
  inflect.irregular 'tipus', 'tipus'
  inflect.irregular 'dada', 'dades'
  inflect.irregular 'dapcons', 'dapcons'
  inflect.irregular 'ecoetiqueta', 'ecoetiquetes'
  inflect.irregular 'categoria', 'categories'
  inflect.irregular 'empresa', 'empreses'
  inflect.irregular 'noticia', 'noticies'
  inflect.irregular 'organitzacio', 'organitzacions'
  inflect.irregular 'afiliada', 'afiliades'
  inflect.irregular 'interaccio', 'interaccions'
end
require 'ruble'

with_defaults :scope => 'text.jade' do

# Filters
	snippet t(:coffeescript ) do |s|
		s.trigger = 'cs'
		s.expansion = ':coffeescript
	$0'
	end

	snippet t(:cdata) do |s|
		s.trigger = 'cd'
		s.expansion = ':cdata
	$0'
	end

	snippet t(:script) do |s|
		s.trigger = 'script'
		s.expansion = 'script
	$0'
	end

	snippet t(:javascript) do |s|
		s.trigger = 'js'
		s.expansion = '- $0'
	end

	snippet t(:markdown) do |s|
		s.trigger = 'md'
		s.expansion = ':markdown
	$0'
	end

	snippet t(:less) do |s|
		s.trigger = 'less'
		s.expansion = ':less
	$0'
	end

	snippet t(:stylus) do |s|
		s.trigger = 'stylus'
		s.expansion = ':stylus
	$0'
	end

	# META
	snippet t(:meta_http_equiv) do |s|
		s.trigger = 'meta( h'
		s.expansion = 'meta( http-equiv=\'Content-Type\', content =\'text/html;\', charset =\'utf-8\'${1:, }$2 )$0'
	end

	snippet t(:meta_generic) do |s|
		s.trigger = 'meta( '
		s.expansion = 'meta( :name = \'$1\', :content=\'$2\'${3:, }$4 )$0'
	end

	# Doctypes
	snippet t(:xhtml_1_strict) do |s|
		s.expansion = 'doctypes strict'
	end

	snippet t(:xhtml_1_transitional) do |s|
		s.expansion = 'doctypes'
	end

	snippet t(:xhtml_1_1) do |s|
		s.expansion = 'doctypes 1.1'
	end

	snippet t(:xhtml_mobile) do |s|
		s.expansion = 'doctypes Mobile'
	end

	snippet t(:html5) do |s|
		s.expansion = 'doctypes 5'
	end

	snippet t(:xml_prolog) do |s|
		s.expansion = 'doctypes XML'
	end

	# FIXED Miscellaneous
	snippet t(:insert_tag) do |s|
		#s.key_binding = 'CONTROL+M2+?,'
		s.expansion = '${1:head/body/input/p/article/section/audio/video/a/header/label/li/form/button/}${2: /#/./()/: }
	${2: /| }$0'
	end

	snippet t(:ie_conditional) do |s|
		s.trigger = 'ie'
		s.expansion = '//if ${1:lte} IE ${2:version} 
	$0'
	end
	
	snippet t(:page_class) do |s|
		s.trigger = 'class'
		s.expansion = '.${1:Class Name}$0'
	end

	snippet t(:element_attribute) do |s|
		s.trigger = ', '
		s.expansion = '${1:Attribute/style/title/name/}="${2:Value}"$0'
	end
	
	snippet t(:for) do |s|
		s.trigger = 'for'
		s.expansion = 'for ${1:Variable} in ${2:Object}
	$0'
	end
	
	snippet t(:each) do |s|
		s.trigger = 'each'
		s.expansion = 'each ${1:Variable}, ${3:i} in ${2:Array}
	//- When ${2:Array} is not empty
else
	//- When ${2:Array} is empty $0'
	end
	
	snippet t(:vars) do |s|
		s.trigger = '#{}'
		s.expansion = '#{${1:Variable}}$0'
	end

	snippet t(:varh) do |s|
		s.trigger = '!{}'
		s.expansion = '!{${1:Variable}}$0'
	end

	snippet t(:ifelse) do |s|
		s.trigger = 'ifelse'
		s.expansion = 'if ${1:Conditional}
	//- Is true!!
else
	//- Is false!
	$0'
	end
	
	snippet t(:unless) do |s|
		s.trigger = 'unless'
		s.expansion = 'unless ${1:Conditional}
	$0'
	end
	
	snippet t(:extend) do |s|
		s.trigger = 'extend'
		s.expansion = 'extends ${1:layout}$0'
	end
	
	snippet t(:include) do |s|
		s.trigger = 'include'
		s.expansion = 'include ${1:Name}$0'
	end
	
	snippet t(:block) do |s|
		s.trigger = 'block'
		s.expansion = 'block ${1:Name}$0'
	end
	
	snippet t(:mix) do |s|
		s.trigger = 'mix'
		s.expansion = 'mixin ${1:Name}(${2:Variable})
	//- Insert your code$0'
	end
	
	snippet t(:case) do |s|
		s.trigger = 'case'
		s.expansion = 'case ${1:Name}
	when ${2:\'Value\'}
		//- When the ${2:\'Value\'} in the ${1:Name} 
	default
		//- When the ${1:Name} in dont in not de case $0'
	end

	snippet t(:img) do |s|
		s.trigger = 'img'
		s.expansion = 'img(scr=${1:SCR}, alt=${2:\'Value\'} )'
	end

	snippet t(:menu) do |s|
		s.trigger = 'ul'
		s.expansion = 'ul.${1:Class}
	li: a( href=${2:\'Value\'} )= ${2:\'Value\'}'
	end
	
	snippet t(:atom) do |s|
		s.trigger = 'feed'
		s.expansion = 'feed( xmlns="http://www.w3.org/2005/Atom" )
	$0'
	end
	
	snippet t(:rss) do |s|
		s.trigger = 'rss'
		s.expansion = 'rss(version=${1:\'2.0\'})
	$0'
	end
	
	snippet t(:input) do |s|
		s.trigger = 'input'
		s.expansion = 'input(type=${1:\'Text\'}, name=${1:\'Name\'} )'
	end
	
	snippet t(:form) do |s|
		s.trigger = 'form'
		s.expansion = 'form(method=${1:"POST"/"GET"/"PUT"}, action=${2:\'url\'})
	$0'
	end 

end

require_relative 'print_strategy'

class TableStrategy < PrintStrategy

  def print_header
    t %<
      <table class="table table-hover table-striped">
        <thead>
          <tr>
            <th>State</th>
            <th>Cities</th>
            <th>Date</th>
          </tr>
        </thead>
        <tbody>
      >
  end

  def print_row(obj)
    t %<
      <tr class="#{obj.name.to_url}">
        <td>#{obj.name}</td>
        <td>#{print_steps(obj)}</td>
        <td>#{print_date(obj)}</td>
      </tr>
    >
  end

  def print_footer
    t '</tbody></table>'
  end

  def print_steps(obj)
    obj.cities.map { |city| "<span class=\"#{city.name.to_url}\">#{city.to_s}</span> <br/>" }.join('')
  end

  def print_menu(db)
    print_half_block('States') do
      print_menu_from_steps( db.get_uniq_states, 'state' ) 
    end
    
    print_half_block('Cities') do
      print_menu_from_steps( db.get_uniq_cities, 'city') 
    end

    t "<br/><br/>"
  end

  private

  def print_half_block(name, &block)
    t "[one_half_last]"
    t "<h3>#{name}</h3>"
    block.call
    t "[/one_half_last]"
  end

  def print_menu_from_steps(uniq_steps , name = '')
    t "<select id=\"select_by_#{name}\">"
    t "<option value="">Choose a #{name}</option>"
    uniq_steps.each do |name, others|
      t "<option value=\"#{name.to_url}\">#{name}"
      t " (#{others.first.country})" if  others.first.country != 'USA'
      t " (#{others.size} times)" if others.size > 1
      t '</option>'
    end
    t '</select>'
  end

end


# function scrollTo(element){
#   $(element).effect("highlight", {}, 8000);
#   $('html,body').animate({
#     scrollTop: ($(element).offset().top - 20)
#   }, 'fast');
# }

# function addChangeObserver(host_id)
# {
#   if($(host_id) == null)
#   {
#     return;
#   }
#   $(host_id).change( function()
#   {
#     if($(host_id + " option:selected").val() == '')
#     {
#       return;
#     }
#     scrollTo( '.' + $(host_id + " option:selected").val() ) ;
#     $(host_id + ' option:first').attr("selected", true);
#   } );
# }
# addChangeObserver('#select_by_state')
# addChangeObserver('#select_by_city')


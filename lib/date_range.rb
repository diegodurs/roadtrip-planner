DateRange = Struct.new(:start_date, :end_date) do
  def to_s
    if nb_days == 0
      end_to_s
    else
      start_to_s + ' - ' + end_to_s
    end
  end
  
  def start_to_s
    start_date.strftime('%e %B')
  end

  def end_to_s
    end_date.strftime('%e %B %Y')
  end

  def nb_days
    end_date.mjd - start_date.mjd
  end
end
# Title Helper

def full_title(page_title)
  base_title = "Thor Platform"
  if (page_title.empty?)
    base_title
  else
    "#{page_title} | #{base_title}"
  end
end

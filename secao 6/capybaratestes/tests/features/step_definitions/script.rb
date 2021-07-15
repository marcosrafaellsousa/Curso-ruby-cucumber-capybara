Quando ('eu uso um script') do
    visit '/docs/5.0/getting-started/introduction/'
    page.execute_script("window.scrollBy(0,1500)")
    
    @result = evaluate_script('4 + 4')
    puts @result 
end

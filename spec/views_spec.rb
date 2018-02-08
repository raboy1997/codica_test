describe Book do
  context 'When testing the views' do

    it 'in  click on the link author ' do
      visit '/books'
      click_link 'Autors'
      expect(page).to have_content 'Jon'
    end

    it 'check the relationship between categories and books ' do
      visit '/'
      click_link 'horror'
      expect(page).to have_content 'colobok'
    end

  end
end




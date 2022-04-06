feature 'viewing properties page' do 
    scenario 'visiting /properties page' do 
        visit('/properties')

        expect(page).to have_content "Makers Paradise"
        expect(page).to have_content "Quaint little paradise escape, perfect for couples and families"
        expect(page).to have_content "130.75"
        expect(page).to have_content "Benedict Cumberbatch"
    end 
end 
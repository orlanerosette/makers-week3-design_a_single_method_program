require 'reading_time'

RSpec.describe "calculate_reading_time method" do

  context "given an empty string" do
    it "returns 0" do
      expect(calculate_reading_time("")).to eq 0
    end
  end

  context "up to 200 words" do
    it "given a string with 9 words it returns 1" do
      result = calculate_reading_time("The quick brown fox jumps over the lazy dog")
      expect(result).to eq 1
    end

    it "given a string with 200 words it returns 1" do
      result = calculate_reading_time("Augue et tempus, ut Blandit sed ac ipsum diam id curae; curae;, fusce lacus. Dictum nonummy commodo nec urna class ligula molestie accumsan. Eros urna. Cras, habitasse luctus mus ultrices placerat fringilla. Duis, vivamus convallis aptent nostra pharetra nisl facilisi pharetra. Commodo sit praesent pulvinar nascetur. Morbi interdum arcu platea. Non luctus massa habitasse et vel ipsum consectetuer lobortis pretium neque, habitasse Molestie vel hendrerit. Facilisis senectus nibh egestas elementum, mi ultrices erat eros ornare ullamcorper tortor. Malesuada donec semper nonummy tortor, id ac sagittis. Bibendum dolor odio praesent nec penatibus, egestas sapien. Lectus diam cum ultricies augue maecenas. Eget orci fames justo, tortor augue feugiat erat aliquam taciti urna purus venenatis natoque urna ornare ultrices potenti tortor ligula class rutrum nullam sapien. Mi metus. Lobortis enim integer conubia lobortis ridiculus justo. Sollicitudin penatibus massa potenti id phasellus, curae; potenti luctus nonummy. Dignissim diam libero lacinia sollicitudin malesuada justo risus donec sociis placerat sagittis. Sollicitudin risus fringilla euismod. Ac pulvinar Imperdiet mi hac ipsum sit. Sed hendrerit orci, mi mollis semper cras iaculis bibendum tincidunt senectus feugiat aenean interdum. Suspendisse eget. Consequat posuere suspendisse pede pharetra iaculis litora Malesuada hendrerit platea Tempus mus semper hendrerit aptent est suscipit morbi, hymenaeos.")
      expect(result).to eq 1
    end
  end

  context "between 200 and up to 400 words" do
    it "given a string with 300 words it returns 2" do
      result = calculate_reading_time("Lorem scelerisque. Maecenas ligula diam accumsan quisque feugiat consequat quis vitae montes diam dolor enim justo. Magnis taciti In dictumst dapibus laoreet arcu phasellus quisque facilisis cras donec. Tellus pede nostra accumsan cubilia elit tristique, vitae auctor id penatibus curabitur dolor sit ullamcorper enim hac purus mauris augue nullam ad facilisis at hendrerit per venenatis ultrices. Tortor nec laoreet nisi. Ultrices placerat. Curabitur nam amet. Egestas aliquet facilisis tempor accumsan sociosqu potenti erat porttitor molestie egestas nostra neque per taciti phasellus dui laoreet nec nisl dignissim habitasse nunc pede felis fusce posuere curabitur morbi, justo posuere nullam id. Bibendum hac posuere condimentum pulvinar porttitor torquent tristique etiam commodo bibendum non congue habitasse ornare. Lobortis ante suspendisse felis Luctus duis. Quisque morbi malesuada lectus odio nibh velit enim potenti dictumst ac. Adipiscing volutpat facilisis non. Lectus. Turpis id ad eros sociosqu in. Sem varius maecenas Facilisi platea nullam facilisis, accumsan, cras amet fringilla, consectetuer, dolor id enim, faucibus nam convallis aliquet amet congue ad quisque hymenaeos feugiat. Dui nec penatibus ante mauris aptent curabitur dolor potenti aliquet semper sapien parturient sodales nullam interdum sem nostra fames tempor, morbi sit quam, sem vivamus vel libero tellus. Mattis eleifend proin senectus dui feugiat praesent etiam mollis eget adipiscing consectetuer. Eu scelerisque facilisis ullamcorper nec tristique sit diam blandit dis sed. Nec elementum vestibulum placerat fames. Aenean facilisis consectetuer felis eros gravida dapibus per curabitur netus laoreet montes adipiscing ultricies id nisl malesuada aliquam vel nulla sit pulvinar phasellus netus cursus posuere velit leo inceptos. Fringilla tellus, lacus volutpat arcu adipiscing tempor donec litora non consequat curae; mauris, ante adipiscing mollis rutrum litora ipsum justo libero sapien cras aptent vivamus cum. Ante fusce pellentesque, faucibus quisque nonummy torquent. Penatibus, velit ligula fermentum tortor tempus, mattis dapibus luctus curae; litora feugiat dictum facilisi mattis mauris.")
      expect(result).to eq 2
    end

    it "given a string with 400 words it returns 2" do
      result = calculate_reading_time("Nonummy suspendisse tempus dictumst aptent faucibus nostra. Sociosqu neque taciti aliquet, vel, fusce. Vitae dictumst ultricies vel ornare lacinia nullam sem. Sociosqu cum sodales feugiat eu Molestie nam rhoncus quam magna ante maecenas fusce elit mollis dictumst, convallis eleifend lectus viverra. Dis inceptos adipiscing euismod primis erat integer cubilia varius duis nulla imperdiet facilisis diam habitant. Convallis vehicula id donec semper class pulvinar, donec luctus Nunc quis placerat aliquam proin cum auctor nullam Potenti ultricies tellus eget, scelerisque molestie ullamcorper nec consequat magnis, tempor quam augue luctus habitasse lacus elit augue venenatis nam ad sodales magna scelerisque nulla at convallis bibendum elementum sapien posuere sed congue. Ante. Pretium consequat fermentum. Magna vel feugiat taciti venenatis luctus nam. Pharetra velit mattis nec iaculis nisi Placerat fusce faucibus habitant. Pede ultrices semper nisl curabitur suscipit. Venenatis duis sed vivamus posuere ante morbi. Cras montes cras fusce tempus quisque orci orci augue accumsan mauris mauris suspendisse risus malesuada diam ultrices commodo lacus erat class. Et eget nunc. Mus dolor dapibus fermentum odio elit vulputate Consequat, fermentum. Ante primis varius consequat metus aliquet sollicitudin erat per platea taciti posuere ac. Hac. Nec, natoque sollicitudin sagittis nunc justo interdum sit donec Commodo justo augue ultrices natoque tempus lacus cum accumsan, blandit ornare. Condimentum phasellus senectus natoque cubilia ipsum urna maecenas ut vel curabitur facilisi vestibulum luctus nascetur per sociosqu. Egestas. Volutpat orci euismod cum. Sociis. Dictum. Pharetra commodo Torquent litora justo molestie aenean. Ultricies lacus conubia tristique aliquet per. Donec. Litora ipsum curabitur suscipit habitasse diam feugiat tristique netus Metus natoque nascetur est condimentum blandit mattis orci mattis per a Dictumst aenean scelerisque tristique erat phasellus feugiat augue netus cum litora mollis eget senectus In purus. Diam nisi egestas habitant fames nec dapibus diam aliquam ultrices nulla gravida pellentesque, dignissim facilisis augue nisi mattis vehicula. Sodales nullam ante quisque a. Pretium hendrerit tellus cum pede amet fermentum parturient. Est dictumst semper nonummy eget donec, montes nascetur pede sociosqu nunc semper eros imperdiet condimentum. Nam. Felis justo. Vestibulum proin. Nascetur non mauris hymenaeos neque nibh blandit eleifend volutpat dignissim convallis consectetuer libero dolor habitant justo aliquam libero faucibus. Arcu vestibulum maecenas bibendum penatibus sodales faucibus mollis sociosqu vestibulum volutpat iaculis est nullam proin adipiscing suspendisse luctus augue dui, interdum inceptos bibendum bibendum. Habitant phasellus turpis a. Ullamcorper Rutrum a bibendum mollis sollicitudin blandit urna. Gravida mollis commodo hendrerit aptent dignissim est gravida leo Taciti aliquet cras.")
      expect(result).to eq 2
    end
  end

  context "between 400 and up to 600 words" do
    it "given a string with 500 words it returns 3" do
      result = calculate_reading_time("")
      expect(result).to eq 3
    end
  end

  context "10,000 words" do
    it "given a string with 10,000 words it returns 50" do
      result = calculate_reading_time("")
      expect(result).to eq 50
    end
  end

  context "20,000 words" do
    it "given a string with 10,000 words it returns 50" do
      result = calculate_reading_time("")
      expect(result).to eq 100
    end
  end
end
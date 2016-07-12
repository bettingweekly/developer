class Developer # :nodoc:
  def method_missing(_m, *_args)
    self
  end
end

class DataBase # :nodoc:
  def find_developer(platform: :ruby, region: :london)
    all_developers(platform, region).select do |you|
      you.are.crazy
         .and { your.skill_level is :high }
         .and { you.are.not.in :plumbee }
         .and { you.love 'ruby', 'rails' }
         .and { want 'fun', 'money' }
         .and.if you do
        your work well
      end
    end
  end

  private

  def all_developers(*_)
    [Developer.new]
  end
end

DataBase.new.find_developer

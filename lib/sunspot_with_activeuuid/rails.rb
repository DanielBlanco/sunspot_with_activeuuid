module Sunspot 
  module Rails
    module Adapters
      class ActiveRecordDataAccessor < Sunspot::Adapters::DataAccessor
        def load(id)
          @clazz.first(options_for_find.merge(
            :conditions => { @clazz.primary_key => id.to_uuid }
          ))
        end
        def load_all(ids)
          @clazz.all(options_for_find.merge(
            :conditions => { @clazz.primary_key => ids.map { |id| id.to_uuid }}
          ))
        end
      end
    end
    module Searchable
      module ClassMethods
        def solr_execute_search_ids(options = {})
          search = yield
          search.raw_results.map { |raw_result| raw_result.primary_key.to_uuid }
        end
      end
    end
  end
end
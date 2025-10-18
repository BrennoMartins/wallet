(ns wallet.core.model.wallet
    (:require [schema.core :as s]))


(s/defschema wallet-schema
  {:id s/Int
   :category s/Str
   :name s/Str
   :percent-goal s/Num
   :percent-current s/Num
   :current-value s/Num
   :percent-fix s/Num
   :value-fix s/Num})
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :students
      get 'students' => 'students#index'
      post 'students' => 'students#create'
    end
  end
  
  resources :students
  root to: 'students#index'
  
  get 'today' => 'students#today'
  get 'todayFirstFloor' => 'students#todayFirstFloor'
  get 'todayLowerFloor' => 'students#todayLowerFloor'
  get 'yesterday' => 'students#yesterday'
  get 'yesterdayFirstFloor' => 'students#yesterdayFirstFloor'
  get 'yesterdayLowerFloor' => 'students#yesterdayLowerFloor'
  get 'week' => 'students#week'
  get 'weekFirstFloor' => 'students#weekFirstFloor'
  get 'weekLowerFloor' => 'students#weekLowerFloor'
  get 'month' => 'students#month'
  get 'monthFirstFloor' => 'students#monthFirstFloor'
  get 'monthLowerFloor' => 'students#monthLowerFloor'
  get 'half' => 'students#half'
  get 'halfFirstFloor' => 'students#halfFirstFloor'
  get 'halfLowerFloor' => 'students#halfLowerFloor'
  get 'year' => 'students#year'
  get 'yearFirstFloor' => 'students#yearFirstFloor'
  get 'yearLowerFloor' => 'students#yearLowerFloor'
  get 'level1' => 'students#mainFloor'
  get 'level0' => 'students#lowerLevel'
  get 'pods' => 'students#podSeating'
  get 'gamerChairs' => 'students#gamerChairs'
  get 'frontDesk' => 'students#frontDesk'
  get 'computerLab' => 'students#computerLab'
  get 'scanners' => 'students#scanners'
  get 'studyRoom' => 'students#studyRoom'
  get 'photocopier' => 'students#photocopier'
  get 'personalDevice' => 'students#personalDevice'
  get 'printer' => 'students#printer'
  get 'mediaScape' => 'students#mediaScape'
  get 'itcComputer' => 'students#itcComputer'
  get 'browsing' => 'students#browsing'
  get 'circDesk' => 'students#circDesk'
  get 'staff' => 'students#staff'
  get 'groupStudy' => 'students#groupStudy'
  get 'quietStudy' => 'students#quietStudy'
  get 'beanBagChair' => 'students#beanBagChair'
  get 'easyChair' => 'students#easyChair'
  get 'studyCarrel' => 'students#studyCarrel'
  post 'students' => 'students#create'
end
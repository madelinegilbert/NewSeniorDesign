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
  get 'yesterday' => 'students#yesterday'
  get 'week' => 'students#week'
  get 'month' => 'students#month'
  get 'half' => 'students#half'
  get 'year' => 'students#year'
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
  post 'students' => 'students#create'
end
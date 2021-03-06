require 'test_helper'

class ProduceTasksControllerTest < ActionController::TestCase
  setup do
    @produce_task = produce_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produce_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produce_task" do
    assert_difference('ProduceTask.count') do
      post :create, produce_task: { area: @produce_task.area, availability: @produce_task.availability, material_category_id: @produce_task.material_category_id, material_type: @produce_task.material_type, mix_status: @produce_task.mix_status, mix_task_id: @produce_task.mix_task_id, order_id: @produce_task.order_id, sequence: @produce_task.sequence, work: @produce_task.work }
    end

    assert_redirected_to produce_task_path(assigns(:produce_task))
  end

  test "should show produce_task" do
    get :show, id: @produce_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produce_task
    assert_response :success
  end

  test "should update produce_task" do
    patch :update, id: @produce_task, produce_task: { area: @produce_task.area, availability: @produce_task.availability, material_category_id: @produce_task.material_category_id, material_type: @produce_task.material_type, mix_status: @produce_task.mix_status, mix_task_id: @produce_task.mix_task_id, order_id: @produce_task.order_id, sequence: @produce_task.sequence, work: @produce_task.work }
    assert_redirected_to produce_task_path(assigns(:produce_task))
  end

  test "should destroy produce_task" do
    assert_difference('ProduceTask.count', -1) do
      delete :destroy, id: @produce_task
    end

    assert_redirected_to produce_tasks_path
  end
end

trigger AccountTrigger on Account (before insert, before update) {
    AccountTriggerHandler.handleBefore(Trigger.new);
}
[{if $payment->isQcsPaymethod($payment->oxuserpayments__oxpaymentsid->value)}]
	[{ oxmultilang ident="PAYMENT_METHOD" suffix="COLON" }] [{ $payment->getQcsRawPaymentDesc($payment->oxpayments__oxdesc->value) }] [{ if $basket->getPaymentCosts() }]([{ $basket->getFPaymentCosts() }] [{ $currency->sign}])[{/if}]
[{else}]
    [{$smarty.block.parent}]
[{/if}]
<#
This example is used to test new resources and showcase the usage of new resources being worked on.
It is not meant to use as a production baseline.
#>

Configuration Example
{
    param(
        [Parameter()]
        [System.String]
        $ApplicationId,

        [Parameter()]
        [System.String]
        $TenantId,

        [Parameter()]
        [System.String]
        $CertificateThumbprint
    )
    Import-DscResource -ModuleName Microsoft365DSC
    node localhost
    {
        CommerceSelfServicePurchase "Power Apps per user"
        {
            ApplicationId         = $ApplicationId;
            CertificateThumbprint = $CertificateThumbprint;
            Ensure                = "Present";
            PolicyValue           = "Enabled";
            ProductId             = "CFQ7TTC0LH2H";
            ProductName           = "Power Apps per user";
            TenantId              = $TenantId;
        }
    }
}

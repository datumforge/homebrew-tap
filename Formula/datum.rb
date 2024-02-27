# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Datum < Formula
  desc "datum is the client CLI for interacting with Datum Server"
  homepage "https://github.com/datumforge/datum"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/datumforge/datum/releases/download/v0.3.3/datum_0.3.3_darwin_amd64.tar.gz"
      sha256 "6ee7fd465cea2b3ac9bb6f19d05255311e3ba69f91d07805e973ea57ec6048be"

      def install
        bin.install "datum"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/datumforge/datum/releases/download/v0.3.3/datum_0.3.3_darwin_arm64.tar.gz"
      sha256 "f70b687e57f44dee6e01c5eb5ba18d13e60d0c0659ec12f37f1b2ff0f8314c2c"

      def install
        bin.install "datum"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/datumforge/datum/releases/download/v0.3.3/datum_0.3.3_linux_arm64.tar.gz"
      sha256 "33db78eb55ddfb62f23b79455e2d892a5981ba0af3db34077cf900dc5caae2f8"

      def install
        bin.install "datum"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/datumforge/datum/releases/download/v0.3.3/datum_0.3.3_linux_amd64.tar.gz"
      sha256 "d97f42d89dcc0bad64537958e7df3421c03ea3c351c6744e65210d7b1a4e5e0c"

      def install
        bin.install "datum"
      end
    end
  end

  test do
    system "#{bin}/datum --help"
  end
end
